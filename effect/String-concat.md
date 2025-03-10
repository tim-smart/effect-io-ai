# concat

Concatenates two strings at runtime.

To import and use `concat` from the "String" module:

```ts
import * as String from "effect/String"
// Can be accessed like this
String.concat
```

**Signature**

```ts
export declare const concat: {
  <B extends string>(that: B): <A extends string>(self: A) => Concat<A, B>
  <A extends string, B extends string>(self: A, that: B): Concat<A, B>
}
```
