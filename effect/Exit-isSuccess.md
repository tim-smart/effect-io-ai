Package: `effect`<br />
Module: `Exit`<br />

## Exit.isSuccess

Returns `true` if the specified `Exit` is a `Success`, `false` otherwise.

**Signature**

```ts
declare const isSuccess: <A, E>(self: Exit<A, E>) => self is Success<A, E>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Exit.ts#L102)

Since v2.0.0