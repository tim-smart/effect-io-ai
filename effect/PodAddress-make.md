# make

Constructs a PodAddress from an host and a port.

To import and use `make` from the "PodAddress" module:

```ts
import * as PodAddress from "@effect/cluster/PodAddress"
// Can be accessed like this
PodAddress.make
```

**Signature**

```ts
export declare function make(host: string, port: number): PodAddress
```
