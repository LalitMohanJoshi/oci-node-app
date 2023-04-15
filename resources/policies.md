<!--==========================   Manage Build Stage Policy =================================-->

Allow any-user to read secret-bundles in compartment myCompartement
Allow group Administrators to manage virtual-network-family in compartment myCompartement

Allow dynamic-group dg-build to read secret-family in compartment myCompartement
Allow dynamic-group dg-build to use ons-topics in compartment myCompartement
Allow dynamic-group dg-build to use adm-knowledge-bases in compartment myCompartement
Allow dynamic-group dg-build to use devops-family in compartment myCompartement

Allow dynamic-group dg-build to manage adm-vulnerability-audits in compartment myCompartement
Allow dynamic-group dg-build to use subnets in compartment myCompartement
Allow dynamic-group dg-build to use vnics in compartment myCompartement

Allow dynamic-group dg-build to use network-security-groups in compartment myCompartement
Allow dynamic-group dg-build to use cabundles in compartment myCompartement

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++ -->

All {resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq', Any {resource.type = 'devopsdeploypipeline', resource.type = 'devopsbuildpipeline', resource.type = 'devopsrepository', resource.type = 'devopsconnection', resource.type = 'devopstrigger'}}


<!--========================== Deliver artifacts Stage Policy =================================-->

Allow dynamic-group dg-build to manage repos in compartment myCompartement
Allow dynamic-group dg-build to manage generic-artifacts in compartment myCompartement
Allow dynamic-group dg-build to manage devops-family in compartment myCompartement
Allow dynamic-group dg-build to use ons-topics in compartment myCompartement

<!-- +++++++++++++++++++++++++++++++++++++++++++++++++ -->

All {resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq', resource.type = 'devopsbuildpipeline'}
 


<!--========================== Deploy Pipline Policy =================================-->

<!------------ Deploy Instance Group Policy ------------------------>

Allow dynamic-group dg-build to read generic-artifacts in compartment myCompartement
Allow dynamic-group dg-build to use instance-agent-command-execution-family in compartment myCompartement
Allow dynamic-group dg-build to read all-artifacts in compartment myCompartement
Allow dynamic-group dg-build to read instance-family in compartment myCompartement
Allow dynamic-group dg-build to use instance-agent-command-family in compartment myCompartement
Allow dynamic-group dg-build to use load-balancers in compartment myCompartement

<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++ -->
  
All {resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq', Any {resource.type = 'devopsdeploypipeline', resource.type = 'devopsbuildpipeline', resource.type = 'devopsrepository', resource.type = 'devopsconnection', resource.type = 'devopstrigger'}}

Any { instance.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq'}


<!------------ Canary Deployment Policy ------------------------>

Allow dynamic-group dg-build to read generic-artifacts in compartment myCompartement
Allow dynamic-group dg-build to use instance-agent-command-execution-family in compartment myCompartement
Allow dynamic-group dg-build to read all-artifacts in compartment myCompartement
Allow dynamic-group dg-build to read instance-family in compartment myCompartement
Allow dynamic-group dg-build to use instance-agent-command-family in compartment myCompartement
Allow dynamic-group dg-build to use load-balancers in compartment myCompartement

<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++ -->

All {resource.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq', Any {resource.type = 'devopsdeploypipeline', resource.type = 'devopsbuildpipeline', resource.type = 'devopsrepository', resource.type = 'devopsconnection', resource.type = 'devopstrigger'}}

Any { instance.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq'}

<!--========================== RunCommand Policy =================================-->

Allow dynamic-group RunCommand-DG to use instance-agent-command-execution-family in compartment myCompartement
Allow dynamic-group RunCommand-DG to manage objects in compartment myCompartement
 
<!-- ++++++++++++++++++++++++++++++++++++++++++++++++++ -->

Any { instance.compartment.id = 'ocid1.compartment.oc1..aaaaaaaahanhdg42cwpip6qr4uhbsmwduge42nyofzbsbkm4im6iypxzglfq'}
