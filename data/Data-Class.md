# Class

Provides a constructor for a Case Class.

Part of the `Data` module, imported from `@effect/data/Data`.

**Signature**

```ts
export declare const Class: new <A extends Record<string, any>>(
  args: IsEqualTo<Omit<A, keyof Equal.Equal>, {}> extends true ? void : Omit<A, keyof Equal.Equal>
) => Data<A>
```
