## isSuccess

Checks if an effect has succeeded.

**Details**

This function evaluates whether an effect has resulted in a success. It
returns a boolean value wrapped in an effect, with `true` indicating the
effect succeeded and `false` otherwise.

The resulting effect cannot fail (`never` in the error channel) but retains
the context of the original effect.

**Signature**

```ts
declare const isSuccess: <A, E, R>(self: Effect<A, E, R>) => Effect<boolean, never, R>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L10341)

Since v2.0.0