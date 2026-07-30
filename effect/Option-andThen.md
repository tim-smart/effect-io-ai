Package: `effect`<br />
Module: `Option`<br />

## Option.andThen

Chains two `Option`s together. The second `Option` can either be a static
value or depend on the result of the first `Option`.

**Details**

This function enables sequencing of two `Option` computations. If the first
`Option` is `Some`, the second `Option` is evaluated. The second `Option` can
either:

- Be a static `Option` value.
- Be a function that produces an `Option`, optionally based on the value of
  the first `Option`.

If the first `Option` is `None`, the function skips the evaluation of the
second `Option` and directly returns `None`.

**Signature**

```ts
declare const andThen: { <A, B>(f: (a: A) => Option<B>): (self: Option<A>) => Option<B>; <B>(f: Option<B>): <A>(self: Option<A>) => Option<B>; <A, B>(f: (a: A) => B): (self: Option<A>) => Option<B>; <B>(f: NotFunction<B>): <A>(self: Option<A>) => Option<B>; <A, B>(self: Option<A>, f: (a: A) => Option<B>): Option<B>; <A, B>(self: Option<A>, f: Option<B>): Option<B>; <A, B>(self: Option<A>, f: (a: A) => B): Option<B>; <A, B>(self: Option<A>, f: NotFunction<B>): Option<B>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Option.ts#L1075)

Since v2.0.0