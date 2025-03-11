## catchTags

Recovers from multiple tagged errors.

**Signature**

```ts
declare const catchTags: { <E extends { _tag: string; }, Cases extends { [K in E["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => STM<any, any, any>); }>(cases: Cases): <A, R>(self: STM<A, E, R>) => STM<A | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<infer A, any, any> ? A : never; }[keyof Cases], Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, any, infer R> ? R : never; }[keyof Cases]>; <R, E extends { _tag: string; }, A, Cases extends { [K in E["_tag"]]+?: ((error: Extract<E, { _tag: K; }>) => STM<any, any, any>); }>(self: STM<A, E, R>, cases: Cases): STM<A | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<infer A, any, any> ? A : never; }[keyof Cases], Exclude<E, { _tag: keyof Cases; }> | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, infer E, any> ? E : never; }[keyof Cases], R | { [K in keyof Cases]: Cases[K] extends (...args: Array<any>) => STM<any, any, infer R> ? R : never; }[keyof Cases]>; }
```

[Source](https://github.com/Effect-TS/effect/tree/main/packages/effect/src/STM.ts#L354)

Since v2.0.0