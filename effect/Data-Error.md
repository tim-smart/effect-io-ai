# Error

Provides a constructor for a Case Class.

To import and use `Error` from the "Data" module:

```ts
import * as Data from 'effect/Data'

// Can be accessed like this
Data.Error
```

**Signature**

```ts
export declare const Error: new <A extends Record<string, any>>(
  args: Types.Equals<Omit<A, keyof Equal.Equal>, {}> extends true
    ? void
    : { readonly [P in keyof A as P extends keyof Equal.Equal ? never : P]: A[P] }
) => YieldableError & Readonly<A>
```
