# matchAll

It is the `pipe`-able version of the native `matchAll` method.

To import and use `matchAll` from the "String" module:

```ts
import * as String from 'effect/String'

// Can be accessed like this
String.matchAll
```

**Signature**

```ts
export declare const matchAll: (regexp: RegExp) => (self: string) => IterableIterator<RegExpMatchArray>
```
