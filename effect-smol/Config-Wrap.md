Package: `effect`<br />
Module: `Config`<br />

## Config.Wrap

Utility type that recursively replaces primitives with `Config` in a nested
structure.

`Config.Wrap<{ key: string }>` becomes `{ key: Config<string> } | Config<{ key: string }>`

When to use:
- Typing the input of `unwrap` so callers can pass either a `Config`
  or a record of `Config`s.

**See**

- `unwrap` – construct a `Config` from a `Wrap<T>`

**Signature**

```ts
type Wrap<A> = [NonNullable<A>] extends [infer T] ? [IsPlainObject<T>] extends [true] ?
      | { readonly [K in keyof A]: Wrap<A[K]> }
      | Config<A>
  : Config<A>
  : Config<A>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Config.ts#L491)

Since v4.0.0