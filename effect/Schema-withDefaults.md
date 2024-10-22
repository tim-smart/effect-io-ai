# withDefaults

Enhances a property signature with a default decoding value and a default constructor value.

To import and use `withDefaults` from the "Schema" module:

```ts
import * as Schema from "effect/Schema"
// Can be accessed like this
Schema.withDefaults
```

**Signature**

```ts
export declare const withDefaults: {
  <Type>(defaults: {
    constructor: () => Types.NoInfer<Exclude<Type, undefined>>
    decoding: () => Types.NoInfer<Type>
  }): <Key extends PropertyKey, Encoded, R>(
    self: PropertySignature<"?:", Type, Key, "?:", Encoded, boolean, R>
  ) => PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, true, R>
  <Type, Key extends PropertyKey, Encoded, R>(
    self: PropertySignature<"?:", Type, Key, "?:", Encoded, boolean, R>,
    defaults: { constructor: () => Types.NoInfer<Exclude<Type, undefined>>; decoding: () => Types.NoInfer<Type> }
  ): PropertySignature<":", Exclude<Type, undefined>, Key, "?:", Encoded, true, R>
}
```
