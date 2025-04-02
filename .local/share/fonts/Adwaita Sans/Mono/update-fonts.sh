#!/bin/sh

IOSEVKA_VERSION=32.4.0
ARCHIVE=v${IOSEVKA_VERSION}.zip
HASH=28485e903808e457cea18385e902402c483978f5fc1ff49035b7cef6b315c11f

BASE_URL=https://github.com/be5invis/Iosevka/archive/refs/tags/

BUILD_DIR=Iosevka-${IOSEVKA_VERSION}

cd $(dirname $0)
set -e

die() {
  echo "$@" >&2
  exit 1
}

download_source() {
  rm --force "${ARCHIVE}"
  wget "${BASE_URL}/${ARCHIVE}"
  echo "${HASH} ${ARCHIVE}" | \
    sha256sum --check --status || die "${ARCHIVE} has invalid checksum"
}

extract_source() {
  unzip -o ${ARCHIVE}
}

build_fonts() {
  cp private-build-plans.toml ${BUILD_DIR}

  pushd ${BUILD_DIR}
  npm install
  npm run build -- ttf::AdwaitaMono
  popd

  cp ${BUILD_DIR}/dist/AdwaitaMono/TTF/*.ttf .
}

download_source
extract_source
build_fonts
