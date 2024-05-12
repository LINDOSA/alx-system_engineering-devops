0x19. Postmortem

Postmortem: Outage Incident Report  
Issue Summary:
Duration: The outage occurred from May 15, 2024, at 10:00 PM GMT to May 16, 2024, at 2:00 AM GMT, lasting approximately 4 hours.
Impact: Our e-commerce platform experienced a complete service disruption, affecting users' ability to access the website, make purchases, or browse product listings. Around 80% of our active users were impacted.
Root Cause: A misconfiguration in the load balancer settings led to an uneven distribution of traffic, causing an overload on certain backend servers and subsequent service degradation.
Timeline:
10:00 PM GMT: I identified a problem via monitoring alerts, which showed a substantial rise in server response times.
10:15 PM GMT: I informed the engineering team and started an investigation, suspecting a potential server overload or network congestion.
10:30 PM GMT: We directed our initial investigation toward backend server performance metrics, such as CPU and memory utilization.
11:00 PM GMT: We incorrectly assumed that a recent software deployment was the cause of the issue and proceeded with rollback procedures.
11:30 PM GMT: After the rollback was unsuccessful, I elevated the incident to the infrastructure team for further analysis.
12:00 AM GMT: A thorough analysis of load balancer configurations uncovered the issue, which was causing an uneven distribution of traffic.
1:00 AM GMT: I modified the load balancer configurations to evenly distribute traffic across all backend servers, restoring service accessibility.
2:00 AM GMT: The service was completely restored, and monitoring systems confirmed normal operation.


Root Cause and Resolution

Root Cause: The incorrect setup in the load balancer parameters led to a non-uniform allocation of traffic, resulting in excessive demands on certain backend servers.
Resolution: I modified the load balancer settings to balance the incoming traffic evenly, mitigating the overload and reestablishing standard service performance.






Corrective and Preventative Measures:
Improvements/Fixes:
I Implemented automated monitoring to detect anomalies in real-time for load balancer configurations.
Established regular audits of load balancer settings to ensure proper traffic distribution.

Tasks to Address the Issue

I Modified load balancer setup scripts to avoid future similar misconfigurations.
Executed an exhaustive examination of deployment methods to improve rollback features and reduce service unavailability.
Arranged group coaching sessions on load balancer administration and problem-solving skills.

Conclusion 
The outage incident underscored the critical importance of strong monitoring and proactive maintenance in ensuring the reliability of our e-commerce platform. By promptly detecting, thoroughly investigating, and decisively addressing the issue, we successfully identified and resolved the root cause, restoring service availability to our users within a reasonable timeframe.

Looking ahead, we must continue to prioritize the implementation of automated monitoring systems, regular audits, and comprehensive training initiatives to bolster our infrastructure's resilience and minimize the impact of potential disruptions. By leveraging insights from this incident and implementing the necessary corrective measures, we are better equipped to uphold our commitment to delivering a seamless and uninterrupted online shopping experience for our customers.

Reference 
https://www.atlassian.com/incident-management/postmortem#the-benefits-of-an-incident-postmortem

