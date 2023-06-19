# ValidDateFromSelf

A schema representing valid dates, e.g. `new Date("fail")` is excluded, even though it is an instance of `Date`.

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Signature**

```ts
export declare const ValidDateFromSelf: Schema<Date, Date>
```
