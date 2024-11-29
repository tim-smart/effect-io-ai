# Pods

An interface to communicate with remote pods.
This is used by the Shard Manager for assigning and unassigning shards.
This is also used by pods for internal communication (forward messages to each other).

To import and use `Pods` from the "Pods" module:

ts
import \* as Pods from "@effect/cluster/Pods"
// Can be accessed like this
Pods.Pods
undefined
