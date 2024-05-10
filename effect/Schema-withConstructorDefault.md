# withConstructorDefault

Enhances a property signature with a default constructor value.

To import and use `withConstructorDefault` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.withConstructorDefault
```

**Signature**

```ts
export declare const withConstructorDefault: {
  <Type>(
    defaultValue: () => Types.NoInfer<Type>
  ): <
    TypeToken extends PropertySignature.Token,
    Key extends PropertyKey,
    EncodedToken extends PropertySignature.Token,
    Encoded,
    R
  >(
    self: PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, boolean, R>
  ) => PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, true, R>
  <
    TypeToken extends PropertySignature.Token,
    Type,
    Key extends PropertyKey,
    EncodedToken extends PropertySignature.Token,
    Encoded,
    R
  >(
    self: PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, boolean, R>,
    defaultValue: () => Types.NoInfer<Type>
  ): PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, true, R>
}
```
