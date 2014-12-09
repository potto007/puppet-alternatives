# == Define: alternatives::alternative_set
#
# Sets alternatives
#
#
define alternatives::alternative_set (
    $path,
    $altlink
) {
    $altname = $name

    alternative_entry { "${path}":
        ensure   => 'present',
        altlink  => "${altlink}",
        altname  => "${altname}",
    }
    alternatives { "${altname}":
        path  => "${path}",
    }

}
