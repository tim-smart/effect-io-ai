# fromOption

Construct a `Channel` from an `Option`.

Part of the `Channel` module, imported from `@effect/stream/Channel`.

**Signature**

```ts
export declare const fromOption: <A>(
  option: Option.Option<A>
) => Channel<never, unknown, unknown, unknown, Option.Option<never>, never, A>
```
