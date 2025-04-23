Package: `effect`<br />
Module: `Schema`<br />

## Schema.withConstructorDefault

Enhances a property signature with a default constructor value.

**Signature**

```ts
declare const withConstructorDefault: { <Type>(defaultValue: () => Types.NoInfer<Type>): <TypeToken extends PropertySignature.Token, Key extends PropertyKey, EncodedToken extends PropertySignature.Token, Encoded, R>(self: PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, boolean, R>) => PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, true, R>; <TypeToken extends PropertySignature.Token, Type, Key extends PropertyKey, EncodedToken extends PropertySignature.Token, Encoded, R>(self: PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, boolean, R>, defaultValue: () => Types.NoInfer<Type>): PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, true, R>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/Schema.ts#L1989)

Since v3.10.0