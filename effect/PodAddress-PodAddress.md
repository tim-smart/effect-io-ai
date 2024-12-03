# PodAddress

A PodAddress is a unique identifier of a Pod (application server).
It is conventially built by using an address and a port, so that messaging implementations may use directly the
PodAddress to know how to connect to the specific Pod.

To import and use `PodAddress` from the "PodAddress" module:

```ts
import * as PodAddress from "@effect/cluster/PodAddress"
// Can be accessed like this
PodAddress.PodAddress
```
