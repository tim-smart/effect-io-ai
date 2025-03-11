## Config.Wrap

Wraps a nested structure, converting all primitives to a `Config`.

`Config.Wrap<{ key: string }>` becomes `{ key: Config<string> }`

To create the resulting config, use the `unwrap` constructor.

**Signature**

```ts
type Wrap<A> = [NonNullable<A>] extends [infer T] ? [IsPlainObject<T>] extends [true] ?
        | { readonly [K in keyof A]: Wrap<A[K]> }
        | Config<A>
    : Config<A>
    : Config<A>
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Config.ts#L79)

Since v2.0.0