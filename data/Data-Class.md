# Class

Provides a constructor for a Case Class.

To import and use `Class` from the "Data" module:

```ts
import * as Data from '@effect/data/Data'

// Can be accessed like this
Data.Class
```

**Signature**

```ts
export declare const Class: new <A extends Record<string, any>>(
  args: IsEqualTo<Omit<A, keyof Equal.Equal>, {}> extends true ? void : Omit<A, keyof Equal.Equal>
) => Data<A>
```
