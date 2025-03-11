## failCause

Creates a failing `Take` with the specified cause.

**Signature**

```ts
declare const failCause: <E>(cause: Cause.Cause<E>) => Take<never, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Take.ts#L108)

Since v2.0.0