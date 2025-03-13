Package: `effect`<br />
Module: `Schema`<br />

## Schema.withDecodingDefault

Enhances a property signature with a default decoding value.

**Signature**

```ts
declare const withDecodingDefault: { <Type>(defaultValue: () => Types.NoInfer<Exclude<Type, undefined>>): <Key extends PropertyKey, Encoded, R>(self: PropertySignature<"?:", Type, Key, "?:", Encoded, false, R>) => PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, false, R>; <Type, Key extends PropertyKey, Encoded, R>(self: PropertySignature<"?:", Type, Key, "?:", Encoded, false, R>, defaultValue: () => Types.NoInfer<Exclude<Type, undefined>>): PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, false, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2064)

Since v3.10.0