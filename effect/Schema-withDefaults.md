Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDefaults

Enhances a property signature with a default decoding value and a default constructor value.

**Signature**

```ts
declare const withDefaults: { <Type>(defaults: { constructor: () => Types.NoInfer<Exclude<Type, undefined>>; decoding: () => Types.NoInfer<Exclude<Type, undefined>>; }): <Key extends PropertyKey, Encoded, R>(self: PropertySignature<"?:", Type, Key, "?:", Encoded, boolean, R>) => PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, true, R>; <Type, Key extends PropertyKey, Encoded, R>(self: PropertySignature<"?:", Type, Key, "?:", Encoded, boolean, R>, defaults: { constructor: () => Types.NoInfer<Exclude<Type, undefined>>; decoding: () => Types.NoInfer<Exclude<Type, undefined>>; }): PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, true, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2124)

Since v3.10.0