import testinfra.utils.ansible_runner

# Use Molecule's inventory file
testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    '.molecule/ansible_inventory'
).get_hosts('all')


def test_nginx_is_installed(host):
    pkg = host.package("nginx")
    assert pkg.is_installed

def test_nginx_running_and_enabled(host):
    service = host.service("nginx")
    assert service.is_running
    assert service.is_enabled
