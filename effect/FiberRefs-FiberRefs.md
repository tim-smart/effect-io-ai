## FiberRefs

`FiberRefs` is a data type that represents a collection of `FiberRef` values.

This allows safely propagating `FiberRef` values across fiber boundaries, for
example between an asynchronous producer and consumer.

**Signature**

```ts
export interface FiberRefs extends Pipeable {
  readonly [FiberRefsSym]: FiberRefsSym
  readonly locals: Map<FiberRef.FiberRef<any>, Arr.NonEmptyReadonlyArray<readonly [FiberId.Single, any]>>
}
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/FiberRefs.ts#L34)

Since v2.0.0