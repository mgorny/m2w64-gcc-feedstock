set -e -x

mkdir -p ${PREFIX}/etc/conda/activate.d
cp "${SRC_DIR}"/activate.sh ${PREFIX}/etc/conda/activate.d/activate-${PKG_NAME}.sh

if [[ "${host_platform}" == "win-"* ]]; then
  cp "${SRC_DIR}"/activate.bat ${PREFIX}/etc/conda/activate.d/activate-${PKG_NAME}.bat
  cp "${SRC_DIR}"/activate.ps1 ${PREFIX}/etc/conda/activate.d/activate-${PKG_NAME}.ps1
fi
