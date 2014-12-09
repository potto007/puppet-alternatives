# == Define: alternatives::alternatives_set
#
# Sets alternatives
#
#
define alternatives::alternatives_set (
    $base_path,
    $base_link
) {
    $alt_name = $name

    alternatives::alternative_set { $alt_name:
        path       => "${base_path}/${alt_name}",
        altlink    => "${base_link}/${alt_name}"
    }
}
