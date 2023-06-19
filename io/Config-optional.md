# optional

Returns an optional version of this config, which will be `None` if the
data is missing from configuration, and `Some` otherwise.

Part of the `Config` module, imported from `@effect/io/Config`.

**Signature**

```ts
export declare const optional: <A>(self: Config<A>) => Config<Option.Option<A>>
```
