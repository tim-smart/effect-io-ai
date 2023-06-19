# validDate

A filter excluding invalid dates (e.g. `new Date("fail")`).

Part of the `Schema` module, imported from `@effect/schema/Schema`.

**Signature**

```ts
export declare const validDate: (options?: AnnotationOptions<Date>) => <I>(self: Schema<I, Date>) => Schema<I, Date>
```
