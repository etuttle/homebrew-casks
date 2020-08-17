cask 'dell-c1660w-c1760nw-printer-drivers' do
  version 'V1.5,A05'
  sha256 'd6f073698e32fedda83357ff5bd5e8d6a48bb6c20951368e1aba1d2969cf027b'

  url "https://dl.dell.com/FOLDER03230828M/1/Printer_C1660_C1760_Installer_Dell_#{version.after_comma}_MAC.dmg"
  name 'Dell C1660w_C1760nw Color Laser Installer and Application'
  name 'Dell C1660w printer driver'
  name 'Dell C1760nw printer driver'
  homepage 'https://www.dell.com/support/home/en-us/drivers/driversdetails?driverid=1gmxv'

  pkg 'MacOSX10.7-/Packages/Dell C1760 C1660 Print Installer.pkg'

  uninstall pkgutil: 'com.dell.print.c1760c1660print.installer'

  caveats do
    license 'https://www.dell.com/learn/us/en/uscorp1/terms-of-sale-consumer-license-agreements'
    <<~EOS
      Dell states (at https://www.dell.com/support/article/en-fr/sln155330):
        Due to circumstances beyond our control, Dell will not be able to offer Laser printer drivers for macOS Catalina.        
      Nevertheless, #{token} works for at least one Catalina user connecting to a C1660w printer.  The Cask installs a single .pkg from Dell, which includes the driver, but skips "Status Monitor.wdgt".
    EOS
  end
end
