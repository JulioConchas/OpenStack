from shade import *

simple_logging(debug=True)
conn = openstack_cloud(cloud='myfavoriteopenstack')
 
print "Selected image:"       
image_id = '95576f28-afed-4b63-93b4-1d07928930da'
image = conn.get_image(image_id)
print(image)

print "\nSelected flavor:"
flavor_id = 'm1.small'
flavor = conn.get_flavor(flavor_id)
print(flavor)

external_network = '7004a83a-13d3-4dcd-8cf5-52af1ace4cae'

print "\nServer creation:"
instance_name = 'my-cattle-001'
testing_instance = conn.create_server(wait=True, auto_ip=True,
    name=instance_name,
    image=image_id,
    flavor=flavor_id,
    network=external_network)

print "\nServers in the cloud:"
instances = conn.list_servers()
for instance in instances:
    print(instance)
