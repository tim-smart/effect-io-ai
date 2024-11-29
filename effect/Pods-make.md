# make

Constructs a Pods service from its implementation

To import and use `make` from the "Pods" module:

ts
import \* as Pods from "@effect/cluster/Pods"
// Can be accessed like this
Pods.make
undefined

**Signature**

```ts
export declare const make: (args: Omit<Pods, typeof PodsTypeId>) => Pods
```
