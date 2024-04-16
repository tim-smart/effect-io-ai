# fromReadonlyRecord

Create a Cookies object from an Iterable

To import and use `fromReadonlyRecord` from the "Cookies" module:

```ts
import * as Cookies from "@effect/platform/Http/Cookies"
// Can be accessed like this
Cookies.fromReadonlyRecord
```

**Signature**

```ts
export declare const fromReadonlyRecord: (cookies: Record.ReadonlyRecord<string, Cookie>) => Cookies
```
