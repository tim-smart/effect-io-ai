## succeedNone

Returns an effect which succeeds with `None`.

**When to Use**

Use this function when you need to represent the absence of a value in your
code, especially when working with optional data. This can be helpful when
you want to indicate that no result is available without throwing an error or
performing additional logic.

**See**

- `succeedSome` to create an effect that succeeds with a `Some` value.

**Signature**

```ts
declare const succeedNone: Effect<Option.Option<never>, never, never>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Effect.ts#L3111)

Since v2.0.0