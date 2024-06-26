# make

Constructs a Pod from it's identifing PodAddress and application server version.

To import and use `make` from the "Pod" module:

```ts
import * as Pod from "@effect/cluster/Pod"
// Can be accessed like this
Pod.make
```

**Signature**

```ts
export declare function make(address: PodAddress.PodAddress, version: string): Pod
```
