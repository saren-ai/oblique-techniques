#!/usr/bin/env bash
#
# Oblique Technique — installer
# Stratagems against the plagiarism machine.
#
#   one stratagem:   curl -fsSL .../install.sh | bash -s -- cut-up
#   a collection:    curl -fsSL .../install.sh | bash -s -- @surrealist
#   everything:      curl -fsSL .../install.sh | bash
#
set -euo pipefail

REPO="${OBLIQUE_REPO:-saren-ai/oblique-techniques}"
BRANCH="${OBLIQUE_BRANCH:-main}"
RAW="https://raw.githubusercontent.com/${REPO}/${BRANCH}"
DEST="${OBLIQUE_SKILLS_DIR:-$HOME/.claude/skills}"

ALL_STRATAGEMS=(
  cut-up "n+7" exquisite-corpse event-score automatic-dispatch
  "détournement" queneau-machine lipogram dream-logic oblique-interrupt
  entendre-engine pretentious-engine fable
)

# Accept ASCII-friendly aliases for the awkward-to-type slugs.
normalize() {
  case "$1" in
    n7|nplus7|n-plus-7) printf '%s' "n+7" ;;
    detournement)       printf '%s' "détournement" ;;
    *)                  printf '%s' "$1" ;;
  esac
}

# UTF-8-safe percent-encoding for a single path segment.
urlencode() {
  local LC_ALL=C s="$1" out="" i c
  for (( i=0; i<${#s}; i++ )); do
    c="${s:i:1}"
    case "$c" in
      [a-zA-Z0-9._~-]) out+="$c" ;;
      *) printf -v c '%%%02X' "'$c"; out+="$c" ;;
    esac
  done
  printf '%s' "$out"
}

fetch_one() {
  local slug enc dir got=0
  slug="$(normalize "$1")"
  enc="$(urlencode "$slug")"
  dir="$DEST/$slug"
  mkdir -p "$dir"
  for f in SKILL.md skill.yaml thumbnail.svg README.md; do
    if curl -fsSL "${RAW}/skills/${enc}/${f}" -o "$dir/$f" 2>/dev/null; then
      [ "$f" = "SKILL.md" ] && got=1
    fi
  done
  if [ "$got" -eq 1 ]; then
    echo "  ✓ $slug"
  else
    echo "  ✗ $slug  (not found)"
    rmdir "$dir" 2>/dev/null || true
    return 1
  fi
}

install_collection() {
  local name="${1#@}" list line
  if ! list="$(curl -fsSL "${RAW}/collections/${name}.txt" 2>/dev/null)"; then
    echo "Unknown collection: @${name}" >&2
    return 1
  fi
  echo "Collection @${name}:"
  while IFS= read -r line; do
    line="${line%%#*}"
    line="$(printf '%s' "$line" | sed 's/^[[:space:]]*//; s/[[:space:]]*$//')"
    [ -z "$line" ] && continue
    fetch_one "$line" || true
  done <<< "$list"
}

main() {
  mkdir -p "$DEST"
  echo "Oblique Technique → ${DEST}"
  if [ "$#" -eq 0 ]; then
    echo "Installing all ${#ALL_STRATAGEMS[@]} stratagems:"
    for s in "${ALL_STRATAGEMS[@]}"; do fetch_one "$s" || true; done
  else
    for arg in "$@"; do
      case "$arg" in
        @*) install_collection "$arg" || true ;;
        *)  fetch_one "$arg" || true ;;
      esac
    done
  fi
  echo "Done."
}

main "$@"
