Package: `effect`<br />
Module: `Option`<br />

## Option.orElseEither

Similar to `orElse`, but returns an `Either` wrapped in an `Option` to
indicate the source of the value.

**Details**

This function allows you to provide a fallback `Option` in case the current
`Option` (`self`) is `None`. However, unlike `orElse`, it returns the value
wrapped in an `Either` object, providing additional information about where
the value came from:

- If the value is from the fallback `Option` (`that`), it is wrapped in an
  `Either.right`.
- If the value is from the original `Option` (`self`), it is wrapped in an
  `Either.left`.

This is especially useful when you need to differentiate between values
originating from the primary `Option` and those coming from the fallback,
while still maintaining the `Option`-style handling.

**Signature**

```ts
declare const orElseEither: { <B>(that: LazyArg<Option<B>>): <A>(self: Option<A>) => Option<Either<B, A>>; <A, B>(self: Option<A>, that: LazyArg<Option<B>>): Option<Either<B, A>>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L612)

Since v2.0.0