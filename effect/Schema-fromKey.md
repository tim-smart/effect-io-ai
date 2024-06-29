# fromKey

Enhances a property signature by specifying a different key for it in the Encoded type.

To import and use `fromKey` from the "Schema" module:

```ts
import * as Schema from "@effect/schema/Schema"
// Can be accessed like this
Schema.fromKey
```

**Signature**

```ts
export declare const fromKey: {
  <Key extends PropertyKey>(
    key: Key
  ): <
    TypeToken extends PropertySignature.Token,
    Type,
    EncodedToken extends PropertySignature.Token,
    Encoded,
    HasDefault extends boolean,
    R
  >(
    self: PropertySignature<TypeToken, Type, PropertyKey, EncodedToken, Encoded, HasDefault, R>
  ) => PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, HasDefault, R>
  <
    Type,
    TypeToken extends PropertySignature.Token,
    Encoded,
    EncodedToken extends PropertySignature.Token,
    HasDefault extends boolean,
    R,
    Key extends PropertyKey
  >(
    self: PropertySignature<TypeToken, Type, PropertyKey, EncodedToken, Encoded, HasDefault, R>,
    key: Key
  ): PropertySignature<TypeToken, Type, Key, EncodedToken, Encoded, HasDefault, R>
}
```
