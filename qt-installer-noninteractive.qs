function Controller() {
    installer.setDefaultPageVisible(QInstaller.TargetDirectory, false);
    installer.setDefaultPageVisible(QInstaller.ComponentSelection, true);
    installer.setDefaultPageVisible(QInstaller.Introduction, false);
    installer.setDefaultPageVisible(QInstaller.LicenseCheck, false);
    installer.setDefaultPageVisible(QInstaller.StartMenuSelection, false);
}

function Component() {
    // 只安装 Qt 5.15.2 msvc2019_64
    var packages = ["qt.qt5.5152.msvc2019_64"];
    for(var i=0; i<packages.length; ++i) {
        installer.selectComponent(packages[i]);
    }
}
