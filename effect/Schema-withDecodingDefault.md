# withDecodingDefault

Enhances a property signature with a default decoding value.

To import and use `withDecodingDefault` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.withDecodingDefault
```

**Signature**

```ts
export declare const withDecodingDefault: {
  <Type>(
    defaultValue: () => Types.NoInfer<Type>
  ): <Key extends PropertyKey, Encoded, HasDefault extends boolean, R>(
    self: PropertySignature<"?:", Type, Key, "?:", Encoded, HasDefault, R>
  ) => PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, HasDefault, R>
  <Type, Key extends PropertyKey, Encoded, HasDefault extends boolean, R>(
    self: PropertySignature<"?:", Type, Key, "?:", Encoded, HasDefault, R>,
    defaultValue: () => Types.NoInfer<Type>
  ): PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, HasDefault, R>
}
```
