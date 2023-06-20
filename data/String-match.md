# match

It is the `pipe`-able version of the native `match` method.

To import and use `match` from the "String" module:

```ts
import * as String from '@effect/data/String'

// Can be accessed like this
String.match
```

**Signature**

```ts
export declare const match: (regexp: RegExp | string) => (self: string) => Option.Option<RegExpMatchArray>
```
