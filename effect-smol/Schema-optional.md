Package: `effect`<br />
Module: `Schema`<br />

## Schema.optional

Companion type for an optional struct key that also accepts `undefined`.
Equivalent to `optionalKey<UndefinedOr<S>>`. Produced by `optional`.

**Signature**

```ts
export interface optional<S extends Top> extends optionalKey<UndefinedOr<S>> {
  readonly "~rebuild.out": optional<S>
}
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Schema.ts#L1543)

Since v4.0.0