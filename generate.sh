#!/bin/bash

set -e

cwd="$(pwd)"
tarballjs="$cwd/tarball.js"
indexjs="$cwd/index.js"

SHORT_SHA=`git rev-parse --short HEAD`

repos=(\
  "effect-ts/effect"\
)

latest_tarball() {
  opts=(-s)

  if [ -n "$GITHUB_TOKEN" ]; then
    opts+=(-H "Authorization: Bearer $GITHUB_TOKEN")
  fi

  url=`curl "${opts[@]}" "https://api.github.com/repos/$1/releases?per_page=1" | node $tarballjs`
  curl -L "$url" | tar -zx --strip-components 1
}

for repo in ${repos[@]}; do
  IFS='/' read -ra repo_parts <<< "$repo"
  repo_name="${repo_parts[1]}"

  echo "Generating docs for $repo_name"

  rm -rf tmp
  mkdir tmp
  cd tmp

  latest_tarball $repo

  if [ -f "docs-ts.json" ]; then
    cp docs-ts.json docgen.json
  fi

  pnpm install
  pnpm rm @effect/docgen
  pnpm add -Dw ../vendor/effect-docgen-0.5.2.tgz
  pnpm run build
  pnpm run docs || pnpm docgen

  rm -rf "../$repo_name"
  mkdir "../$repo_name"
  mkdir -p "../json"
  cp -r packages/*/docs/ai/*.md "../$repo_name" || true
  cp -r packages/*/docs/*.json "../json" || true
  cp -r packages/ai/*/docs/ai/*.md "../$repo_name" || true
  cp -r packages/ai/*/docs/*.json "../json" || true

  cd ..
done

rm -f json/_all.json
jq -s '. | flatten' json/*.json > json/_all.json

node $indexjs > index.html
