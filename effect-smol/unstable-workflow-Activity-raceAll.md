Package: `effect`<br />
Module: `Activity`<br />

## Activity.raceAll

Runs a non-empty collection of activities as a durable race and returns the
first completed success or failure using unioned success and error schemas.

**Signature**

```ts
declare const raceAll: <const Activities extends NonEmptyReadonlyArray<Any>>(name: string, activities: Activities) => Effect.Effect<Activities[number] extends Activity<infer _A, infer _E, infer _R> ? _A["Type"] : never, Activities[number] extends Activity<infer _A, infer _E, infer _R> ? _E["Type"] : never, (Activities[number] extends Activity<infer Success, infer Error, infer R> ? Success["DecodingServices"] | Error["DecodingServices"] | R : never) | WorkflowEngine | WorkflowInstance>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/Activity.ts#L270)

Since v4.0.0