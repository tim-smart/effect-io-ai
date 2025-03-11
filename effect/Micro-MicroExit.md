## MicroExit

The `MicroExit` type is used to represent the result of a `Micro` computation. It
can either be successful, containing a value of type `A`, or it can fail,
containing an error of type `E` wrapped in a `MicroCause`.

**Signature**

```ts
type MicroExit<A, E> = | MicroExit.Success<A, E>
  | MicroExit.Failure<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Micro.ts#L1597)

Since v3.4.6