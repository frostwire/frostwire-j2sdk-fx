export COMPILER_WARNINGS_FATAL=false
export USE_CLANG=true
export LFLAGS='-Xlinker -lstdc++'

bash ./configure \
--enable-unlimited-crypto \
--disable-debug-symbols \
--with-user-release-suffix="j2sdk-fx" \
--with-boot-jdk=/Library/Java/JavaVirtualMachines/jdk1.7.0_71.jdk/Contents/Home \
--with-extra-cxxflags="-Os -mmacosx-version-min=10.7" \
CXXFLAGS="-Os -mmacosx-version-min=10.7"

make images