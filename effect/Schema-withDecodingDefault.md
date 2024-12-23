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
    defaultValue: () => Types.NoInfer<Exclude<Type, undefined>>
  ): <Key extends PropertyKey, Encoded, R>(
    self: PropertySignature<"?:", Type, Key, "?:", Encoded, false, R>
  ) => PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, false, R>
  <Type, Key extends PropertyKey, Encoded, R>(
    self: PropertySignature<"?:", Type, Key, "?:", Encoded, false, R>,
    defaultValue: () => Types.NoInfer<Exclude<Type, undefined>>
  ): PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, false, R>
}
```
