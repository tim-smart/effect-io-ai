## PodAddress

A PodAddress is a unique identifier of a Pod (application server).
It is conventially built by using an address and a port, so that messaging implementations may use directly the
PodAddress to know how to connect to the specific Pod.

**Signature**

```ts
declare class PodAddress
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/PodAddress.ts#L33)

Since v1.0.0