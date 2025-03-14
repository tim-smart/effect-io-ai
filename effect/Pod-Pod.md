Package: `@effect/cluster`<br />
Module: `Pod`<br />

## Pod.Pod

A pod is an application server that is able to run entities. A pod can run multiple entities,
but a single entity will live on a given pod at a time.
Since this is an application server, it needs to have an unique identifier where it's addressed (PodAddress),
and has a version of the application that's running on it.
Version is used during the rebalance phase to give priority to newer application servers and slowly kill older ones.

**Signature**

```ts
declare class Pod
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/cluster/src/Pod.ts#L36)

Since v1.0.0