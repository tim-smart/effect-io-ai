# concat

Concatenates two strings at runtime.

To import and use `concat` from the "String" module:

```ts
import * as String from '@effect/data/String'

// Can be accessed like this
String.concat
```

**Signature**

```ts
export declare const concat: {
  <B extends string>(that: B): <A extends string>(self: A) => `${A}${B}`
  <A extends string, B extends string>(self: A, that: B): `${A}${B}`
}
```
