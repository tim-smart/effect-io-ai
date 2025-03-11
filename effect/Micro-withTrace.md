## withTrace

Add a stack trace to any failures that occur in the effect. The trace will be
added to the `traces` field of the `MicroCause` object.

**Signature**

```ts
declare const withTrace: { (name: string): <A, E, R>(self: Micro<A, E, R>) => Micro<A, E, R>; <A, E, R>(self: Micro<A, E, R>, name: string): Micro<A, E, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L2983)

Since v3.4.0