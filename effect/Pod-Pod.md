# Pod

A pod is an application server that is able to run entities. A pod can run multiple entities,
but a single entity will live on a given pod at a time.
Since this is an application server, it needs to have an unique identifier where it's addressed (PodAddress),
and has a version of the application that's running on it.
Version is used during the rebalance phase to give priority to newer application servers and slowly kill older ones.

To import and use `Pod` from the "Pod" module:

ts
import \* as Pod from "@effect/cluster/Pod"
// Can be accessed like this
Pod.Pod
undefined
