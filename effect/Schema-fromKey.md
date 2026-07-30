Package: `effect`<br />
Module: `Schema`<br />

## Schema.fromKey

Enhances a property signature by specifying a different key for it in the Encoded type.

**Signature**

```ts
declare const fromKey: { <Key extends PropertyKey>(key: Key): <TypeToken extends PropertySignature.Token, Type, EncodedToken extends PropertySignature.Token, Encoded, HasDefault extends boolean, R>(self: PropertySignature<TypeToken, Type, PropertyKey, EncodedToken, Encoded, HasDefault, R>) => PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, HasDefault, R>; <Type, TypeToken extends PropertySignature.Token, Encoded, EncodedToken extends PropertySignature.Token, HasDefault extends boolean, R, Key extends PropertyKey>(self: PropertySignature<TypeToken, Type, PropertyKey, EncodedToken, Encoded, HasDefault, R>, key: Key): PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, HasDefault, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L2169)

Since v3.10.0