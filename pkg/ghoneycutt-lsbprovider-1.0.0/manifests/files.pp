# Class: lsbprovider::files
#
# Manage the /opt/$lsbProvider/bin directory
#
# Defined in section 3.13.2 of the FHS v2.3
# http://www.pathname.com/fhs/
# http://www.lanana.org/lsbreg/providers/providers.txt
#
# Requires:
#   $lsbProvider must be set in site manifest
#
class lsbprovider::files {

    file { "/opt/$lsbProvider/bin":
        path         => "/opt/$lsbProvider/bin",
        sourceselect => all,
        recurse      => true,
        require      => File["/opt/$lsbProvider"],
        mode         => "755",
    } # file
} # class lsbprovider::files
