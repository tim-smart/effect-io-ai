Package: `effect`<br />
Module: `ClusterWorkflowEngine`<br />

## ClusterWorkflowEngine.make

Creates a `WorkflowEngine` implementation backed by cluster sharding and
message storage.

**Details**

Workflow executions, activities, deferred completions, resumes, interrupts,
and durable clock wakeups are coordinated through persisted cluster entities.

**Signature**

```ts
declare const make: Effect.Effect<{ readonly register: <Name extends string, Payload extends Workflow.AnyStructSchema, Success extends Schema.Top, Error extends Schema.Top, R>(workflow: Workflow.Workflow<Name, Payload, Success, Error>, execute: (payload: Payload["Type"], executionId: string) => Effect.Effect<Success["Type"], Error["Type"], R>) => Effect.Effect<void, never, Scope.Scope | Exclude<R, WorkflowEngine.WorkflowEngine | WorkflowEngine.WorkflowInstance | Workflow.Execution<Name> | Scope.Scope> | Payload["DecodingServices"] | Payload["EncodingServices"] | Success["DecodingServices"] | Success["EncodingServices"] | Error["DecodingServices"] | Error["EncodingServices"]>; readonly execute: <Name extends string, Payload extends Workflow.AnyStructSchema, Success extends Schema.Top, Error extends Schema.Top, const Discard extends boolean = false>(workflow: Workflow.Workflow<Name, Payload, Success, Error>, options: { readonly executionId: string; readonly payload: Payload["Type"]; readonly discard?: Discard | undefined; readonly suspendedRetrySchedule?: Schedule.Schedule<any, unknown> | undefined; }) => Effect.Effect<Discard extends true ? string : Success["Type"], Error["Type"], Payload["EncodingServices"] | Success["DecodingServices"] | Error["DecodingServices"]>; readonly poll: <Name extends string, Payload extends Workflow.AnyStructSchema, Success extends Schema.Top, Error extends Schema.Top>(workflow: Workflow.Workflow<Name, Payload, Success, Error>, executionId: string) => Effect.Effect<Option.Option<Workflow.Result<Success["Type"], Error["Type"]>>, never, Success["DecodingServices"] | Error["DecodingServices"]>; readonly interrupt: (workflow: Workflow.Any, executionId: string) => Effect.Effect<void>; readonly interruptUnsafe: (workflow: Workflow.Any, executionId: string) => Effect.Effect<void>; readonly resume: (workflow: Workflow.Any, executionId: string) => Effect.Effect<void>; readonly activityExecute: <Success extends Schema.Top, Error extends Schema.Top, R>(activity: Activity.Activity<Success, Error, R>, attempt: number) => Effect.Effect<Workflow.Result<Success["Type"], Error["Type"]>, never, Success["DecodingServices"] | Error["DecodingServices"] | R | WorkflowEngine.WorkflowInstance>; readonly deferredResult: <Success extends Schema.Top, Error extends Schema.Top>(deferred: DurableDeferred.DurableDeferred<Success, Error>) => Effect.Effect<Option.Option<Exit.Exit<Success["Type"], Error["Type"]>>, never, WorkflowEngine.WorkflowInstance>; readonly deferredDone: <Success extends Schema.Top, Error extends Schema.Top>(deferred: DurableDeferred.DurableDeferred<Success, Error>, options: { readonly workflowName: string; readonly executionId: string; readonly deferredName: string; readonly exit: Exit.Exit<Success["Type"], Error["Type"]>; }) => Effect.Effect<void, never, Success["EncodingServices"] | Error["EncodingServices"]>; readonly scheduleClock: (workflow: Workflow.Any, options: { readonly executionId: string; readonly clock: DurableClock.DurableClock; }) => Effect.Effect<void>; }, never, Scope.Scope | Sharding.Sharding | MessageStorage>
```

[Source](https://github.com/Effect-TS/effect-smol/tree/main/packages/effect/src/ClusterWorkflowEngine.ts#L74)

Since v4.0.0