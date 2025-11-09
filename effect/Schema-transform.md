Package: `effect`<br />
Module: `Schema`<br />

## Schema.transform

Create a new `Schema` by transforming the input and output of an existing `Schema`
using the provided mapping functions.

**Signature**

```ts
declare const transform: { <To extends Schema.Any, From extends Schema.Any>(to: To, options: { readonly decode: (fromA: Schema.Type<From>, fromI: Schema.Encoded<From>) => Schema.Encoded<To>; readonly encode: (toI: Schema.Encoded<To>, toA: Schema.Type<To>) => Schema.Type<From>; readonly strict?: true; } | { readonly decode: (fromA: Schema.Type<From>, fromI: Schema.Encoded<From>) => unknown; readonly encode: (toI: Schema.Encoded<To>, toA: Schema.Type<To>) => unknown; readonly strict: false; }): (from: From) => transform<From, To>; <To extends Schema.Any, From extends Schema.Any>(from: From, to: To, options: { readonly decode: (fromA: Schema.Type<From>, fromI: Schema.Encoded<From>) => Schema.Encoded<To>; readonly encode: (toI: Schema.Encoded<To>, toA: Schema.Type<To>) => Schema.Type<From>; readonly strict?: true; } | { readonly decode: (fromA: Schema.Type<From>, fromI: Schema.Encoded<From>) => unknown; readonly encode: (toI: Schema.Encoded<To>, toA: Schema.Type<To>) => unknown; readonly strict: false; }): transform<From, To>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L3939)

Since v3.10.0