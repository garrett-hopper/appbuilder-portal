INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Type", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId") VALUES
(1,	'sil_android_google_play',	1,	'1',	'SIL Default Workflow for Publishing to Google Play',	'SIL_Default_AppBuilders_Android_GooglePlay',	'SIL_Default_AppBuilders_Android_GooglePlay_Flow',	1)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Type" = excluded."Type",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Type", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId") VALUES
(2,	'sil_android_google_play_rebuild',	2,	'1',	'SIL Default Workflow for Rebuilding to Google Play',	'SIL_Default_AppBuilders_Android_GooglePlay_Rebuild',	'SIL_Default_AppBuilders_Android_GooglePlay_Flow',	1)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Type" = excluded."Type",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId";
	
INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Type", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId") VALUES
(3,	'sil_android_google_play_republish',	3,	'1',	'SIL Default Workflow for Republish to Google Play',	'SIL_Default_AppBuilders_Android_GooglePlay_Republish',	'SIL_Default_AppBuilders_Android_GooglePlay_Flow',	1)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId";
	
INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Type", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId") VALUES
(4,	'sil_android_s3',	1,	'1',	'SIL Default Workflow for Publish to Amazon S3 Bucket',	'SIL_Default_AppBuilders_Android_S3',	'SIL_Default_AppBuilders_Android_GooglePlay_Flow',	2)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Type" = excluded."Type",	
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Type", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId") VALUES
(5,	'sil_android_s3_rebuild',	2,	'1',	'SIL Default Workflow for Rebuilding to Amazon S3 Bucket',	'SIL_Default_AppBuilders_Android_S3_Rebuild',	'SIL_Default_AppBuilders_Android_GooglePlay_Flow',	2)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Type" = excluded."Type",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId";
	
INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES 
(6, 'la_android_google_play', '1', 'Low Admin Workflow for Publishing to Google Play', 'SIL_LowAdmin_AppBuilders_Android_GooglePlay', 'SIL_Default_AppBuilders_Android_GooglePlay_Flow', 1, 1)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES 
(7, 'oa_android_google_play', '1', 'Owner Admin Workflow for Publishing to Google Play', 'SIL_OwnerAdmin_AppBuilders_Android_GooglePlay', 'SIL_Default_AppBuilders_Android_GooglePlay_Flow', 1, 1)
ON CONFLICT ("Id")
DO UPDATE SET 
	"Name" = excluded."Name", 
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES
(8, 'na_android_s3', '1', 'No Admin Workflow for Publishing to S3', 'SIL_NoAdmin_AppBuilders_Android_S3', 'SIL_Default_AppBuilders_Android_GooglePlay_Flow', 2, 1)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES
(9, 'pwa_cloud', '1', 'SIL Default Workflow for Publishing PWA to Cloud', 'SIL_Default_AppBuilders_Pwa_Cloud', 'SIL_AppBuilders_Web_Flow', 3, 1)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES
(10,	'pwa_cloud_rebuild',	'1',	'SIL Default Workflow for Rebuilding PWA to Cloud',	'SIL_Default_AppBuilders_Pwa_Cloud_Rebuild',	'SIL_AppBuilders_Web_Flow',	3,	2)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES
(11, 'html_cloud', '1', 'SIL Default Workflow for Publishing HTML to Cloud', 'SIL_Default_AppBuilders_Html_Cloud', 'SIL_AppBuilders_Web_Flow', 3, 1)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";

INSERT INTO "WorkflowDefinitions" ("Id", "Name", "Enabled", "Description", "WorkflowScheme", "WorkflowBusinessFlow", "StoreTypeId", "Type") VALUES
(12,	'html_cloud_rebuild',	'1',	'SIL Default Workflow for Rebuilding HTML to Cloud',	'SIL_Default_AppBuilders_Html_Cloud_Rebuild',	'SIL_AppBuilders_Web_Flow',	3,	2)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"Enabled" = excluded."Enabled",
	"Description" = excluded."Description",
	"WorkflowScheme" = excluded."WorkflowScheme",
	"WorkflowBusinessFlow" = excluded."WorkflowBusinessFlow",
	"StoreTypeId" = excluded."StoreTypeId",
	"Type" = excluded."Type";
		
INSERT INTO "ProductDefinitions" ("Id", "Name", "TypeId", "Description", "WorkflowId", "RebuildWorkflowId", "RepublishWorkflowId") VALUES
(1,	'Android App to Google Play',	1,	'Build an Android App from a Scripture App Builder project and publish to a Google Play Store. The Organization Admin has to approve of the project and review the store preview. The Organization Admin has access to Google Play Console.',	1, 2, 3)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"TypeId" = excluded."TypeId",
	"Description" = excluded."Description",
	"WorkflowId" = excluded."WorkflowId",
	"RebuildWorkflowId" = excluded."RebuildWorkflowId",
	"RepublishWorkflowId" = excluded."RepublishWorkflowId";


INSERT INTO "ProductDefinitions" ("Id", "Name", "TypeId", "Description", "WorkflowId", "RebuildWorkflowId") VALUES
(2,	'Android App to Amazon S3 Bucket',	1,	'Build an Android App from a Scripture App Builder project and publish to an Amazon S3 Bucket',	4, 5)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"TypeId" = excluded."TypeId",
	"Description" = excluded."Description",
	"WorkflowId" = excluded."WorkflowId",
	"RebuildWorkflowId" = excluded."RebuildWorkflowId";
	
INSERT INTO "ProductDefinitions" ("Id", "Name", "TypeId", "Description", "WorkflowId", "RebuildWorkflowId", "RepublishWorkflowId") VALUES 
(3, 'Android App to Google Play (Low Admin)', 1, 'Build an Android App from a Scripture App Builder project and publish to a Google Play Store, but with less approval and oversight required. The Organization Admin has access to Google Play Console.', 6, 2, 3)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"TypeId" = excluded."TypeId",
	"Description" = excluded."Description",
	"WorkflowId" = excluded."WorkflowId",
	"RebuildWorkflowId" = excluded."RebuildWorkflowId",
	"RepublishWorkflowId" = excluded."RepublishWorkflowId";

INSERT INTO "ProductDefinitions" ("Id", "Name", "TypeId", "Description", "WorkflowId", "RebuildWorkflowId") VALUES 
(4, 'Android App to Amazon S3 Bucket (No Admin)', 1, 'Build an Android App from a Scripture App Builder project and publish to an Amazon S3 Bucket, but with no admin required.', 8, 5)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"TypeId" = excluded."TypeId",
	"Description" = excluded."Description",
	"WorkflowId" = excluded."WorkflowId",
	"RebuildWorkflowId" = excluded."RebuildWorkflowId";

INSERT INTO "ProductDefinitions" ("Id", "Name", "TypeId", "Description", "WorkflowId", "RebuildWorkflowId", "RepublishWorkflowId") VALUES 
(5, 'Android App to Google Play (Owner Admin)', 1, 'Build an Android App from a Scripture App Builder project and publish to a Google Play Store, but with no approval and oversight required. The owner of the project has access to Google Play Console.', 7, 2, 3)
ON CONFLICT ("Id")
DO UPDATE SET
	"Name" = excluded."Name",
	"TypeId" = excluded."TypeId",
	"Description" = excluded."Description",
	"WorkflowId" = excluded."WorkflowId",
	"RebuildWorkflowId" = excluded."RebuildWorkflowId",
	"RepublishWorkflowId" = excluded."RepublishWorkflowId";
	
SELECT SETVAL('"WorkflowDefinitions_Id_seq"', COALESCE(MAX("Id"), 1) )
FROM "WorkflowDefinitions";
SELECT SETVAL('"ProductDefinitions_Id_seq"', COALESCE(MAX("Id"), 1) )
FROM "ProductDefinitions";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Android_GooglePlay',	'<Process Name="SIL_Default_AppBuilders_Android_GooglePlay" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="160" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="400" />
    </Activity>
    <Activity Name="Approval" State="Approval" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="160" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="560" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="400" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk play-listing", "environment" : { "BUILD_MANAGE_VERSION_CODE": "1", "BUILD_MANAGE_VERSION_NAME" : "1", "BUILD_SHARE_APP_LINK" : "1" }}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="560" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="580" />
    </Activity>
    <Activity Name="App Store Preview" State="App Store Preview" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="880" Y="730" />
    </Activity>
    <Activity Name="Create App Store Entry" State="Create App Store Entry" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="750" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="900" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"environment":{"PUBLISH_DRAFT":"1"}}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="760" Y="920" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="860" />
    </Activity>
    <Activity Name="Make It Live" State="Make It Live" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="1060" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1370" Y="1030" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="400" Y="1050" />
    </Activity>
    <Activity Name="Readiness Check" State="Readiness Check" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="160" />
    </Activity>
    <Activity Name="Approval Pending" State="Approval Pending" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="340" />
    </Activity>
    <Activity Name="Terminated" State="Terminated" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Designer X="1320" Y="270" />
    </Activity>
    <Activity Name="Set Google Play Uploaded" State="Set Google Play Uploaded" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="Build_SetStatus">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </ActionRef>
        <ActionRef Order="2" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="170" Y="890" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Approval_Job Creation_1" To="Product Creation" From="Approval" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="942" Y="502" />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="1070" Y="476" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="App Store Preview_SynchronizeData_1" To="Synchronize Data" From="App Store Preview" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="568" Y="675" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_1" To="Create App Store Entry" From="App Store Preview" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Create App Store Entry_SynchronizeData_1" To="Synchronize Data" From="Create App Store Entry" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="478" Y="673" />
    </Transition>
    <Transition Name="Create App Store Entry_Activity_1_1" To="Set Google Play Uploaded" From="Create App Store Entry" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="268" Y="833" />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="677" Y="932" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="719" Y="683" />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Make It Live" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1327" Y="834" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="666" Y="838" />
    </Transition>
    <Transition Name="Make It Live_Activity_1_1" To="Published" From="Make It Live" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Make It Live_SynchronizeData_1" To="Synchronize Data" From="Make It Live" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="651" Y="687" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Readiness Check_Approval_1" To="Approval" From="Readiness Check" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Approval_Activity_1_1" To="Approval Pending" From="Approval" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Hold" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Approval Pending_Product Creation_1" To="Product Creation" From="Approval Pending" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1009" Y="271" />
    </Transition>
    <Transition Name="Approval_Activity_1_2" To="Terminated" From="Approval" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="907" Y="289" />
    </Transition>
    <Transition Name="Approval Pending_Terminated_1" To="Terminated" From="Approval Pending" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1103" Y="372" />
    </Transition>
    <Transition Name="Approval Pending_Approval Pending_1" To="Approval Pending" From="Approval Pending" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Hold" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="968" Y="317" />
    </Transition>
    <Transition Name="Check Product Build_Activity_1_2" To="App Store Preview" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
        <Condition Type="Action" NameRef="Build_AnyMatchingStatus" ConditionInversion="true" ResultOnPreExecution="true">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Google Play Upload_Verify and Publish_1" To="Verify and Publish" From="Set Google Play Uploaded" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" NameRef="" ConditionInversion="false" />
      </Conditions>
      <Designer X="395" Y="853" />
    </Transition>
    <Transition Name="Skip_Create_App_Entry_If_Already_Uploaded" To="Verify and Publish" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
        <Condition Type="Action" NameRef="Build_AnyMatchingStatus" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer X="816" Y="808" />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";
	
INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_LowAdmin_AppBuilders_Android_GooglePlay',	'<Process Name="SIL_LowAdmin_AppBuilders_Android_GooglePlay" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="160" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="400" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="560" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="400" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk play-listing", "environment" : { "BUILD_MANAGE_VERSION_CODE": "1", "BUILD_MANAGE_VERSION_NAME" : "1", "BUILD_SHARE_APP_LINK" : "1" }}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="560" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="560" />
    </Activity>
    <Activity Name="Create App Store Entry" State="Create App Store Entry" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="750" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="900" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"environment":{"PUBLISH_DRAFT":"1"}}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="900" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="860" />
    </Activity>
    <Activity Name="Make It Live" State="Make It Live" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="1060" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1370" Y="1030" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="400" Y="1050" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="160" />
    </Activity>
    <Activity Name="Set Google Play Uploaded" State="Set Google Play Uploaded" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="Build_SetStatus">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </ActionRef>
        <ActionRef Order="2" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="120" Y="860" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="757" Y="499" />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="1065" Y="525" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Create App Store Entry_SynchronizeData_1" To="Synchronize Data" From="Create App Store Entry" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="478" Y="673" />
    </Transition>
    <Transition Name="Create App Store Entry_Activity_1_1" To="Set Google Play Uploaded" From="Create App Store Entry" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="240" Y="805" />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="677" Y="932" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="689" Y="674" />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Make It Live" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1327" Y="834" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="666" Y="838" />
    </Transition>
    <Transition Name="Make It Live_Activity_1_1" To="Published" From="Make It Live" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Make It Live_SynchronizeData_1" To="Synchronize Data" From="Make It Live" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="651" Y="687" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Activity_1_2" To="Create App Store Entry" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
        <Condition Type="Action" NameRef="Build_AnyMatchingStatus" ConditionInversion="true" ResultOnPreExecution="true">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer X="1018" Y="703" />
    </Transition>
    <Transition Name="Readiness Check_Approval_1" To="Product Creation" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Set Google Play Uploaded_Verify and Publish_1" To="Verify and Publish" From="Set Google Play Uploaded" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="371" Y="875" />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
        <Condition Type="Action" NameRef="Build_AnyMatchingStatus" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer X="827" Y="738" />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";
	
INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_OwnerAdmin_AppBuilders_Android_GooglePlay', '<Process Name="SIL_OwnerAdmin_AppBuilders_Android_GooglePlay" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="160" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="400" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="560" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="400" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk play-listing", "environment" : { "BUILD_MANAGE_VERSION_CODE": "1", "BUILD_MANAGE_VERSION_NAME" : "1", "BUILD_SHARE_APP_LINK" : "1" }}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="560" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="560" />
    </Activity>
    <Activity Name="Create App Store Entry" State="Create App Store Entry" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="750" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="900" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"environment":{"PUBLISH_DRAFT":"1"}}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="740" Y="900" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="860" />
    </Activity>
    <Activity Name="Make It Live" State="Make It Live" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1080" Y="1060" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1370" Y="1030" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="400" Y="1050" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="420" Y="160" />
    </Activity>
    <Activity Name="Set Google Play Uploaded" State="Set Google Play Uploaded" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="Build_SetStatus">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </ActionRef>
        <ActionRef Order="2" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="130" Y="840" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="757" Y="499" />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="1065" Y="525" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Create App Store Entry_SynchronizeData_1" To="Synchronize Data" From="Create App Store Entry" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="478" Y="673" />
    </Transition>
    <Transition Name="Create App Store Entry_Activity_1_1" To="Set Google Play Uploaded" From="Create App Store Entry" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="258" Y="794" />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="677" Y="932" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="689" Y="674" />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Make It Live" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1327" Y="834" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="666" Y="838" />
    </Transition>
    <Transition Name="Make It Live_Activity_1_1" To="Published" From="Make It Live" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Make It Live_SynchronizeData_1" To="Synchronize Data" From="Make It Live" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="651" Y="687" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Activity_1_2" To="Create App Store Entry" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
        <Condition Type="Action" NameRef="Build_AnyMatchingStatus" ConditionInversion="true" ResultOnPreExecution="true">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer X="1018" Y="703" />
    </Transition>
    <Transition Name="Readiness Check_Approval_1" To="Product Creation" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Set Google Play Uploaded_Verify and Publish_1" To="Verify and Publish" From="Set Google Play Uploaded" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="415" Y="855" />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
        <Condition Type="Action" NameRef="Build_AnyMatchingStatus" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[{"google_play_uploaded":"1"}]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";
	
INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Android_GooglePlay_Rebuild', '<Process Name="SIL_Default_AppBuilders_Android_GooglePlay_Rebuild" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" InitialValue="{&quot;Synchronize Data&quot;:false}" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="280" Y="450" />
    </Activity>
    <Activity Name="Product Rebuild" State="Product Rebuild" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk play-listing", "environment" : { "BUILD_MANAGE_VERSION_CODE": "1", "BUILD_MANAGE_VERSION_NAME" : "1", "BUILD_SHARE_APP_LINK" : "1" }}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="390" Y="260" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="720" Y="260" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="750" Y="420" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="570" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="720" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1020" Y="720" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="1060" Y="420" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="40" Y="250" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Rebuild" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Rebuild" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="690" Y="389" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="925" Y="687" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="536" Y="616" />
    </Transition>
    <Transition Name="Initial_Product Build_1" To="Product Rebuild" From="Initial" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Email Reviewers_1" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Email Reviewers_Verify and Publish_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1006" Y="378" />
    </Transition>
    <Transition Name="Check Product Publish_Published_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Initial_Synchronize Data_1" To="Synchronize Data" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="Should_Execute_Activity" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[Synchronize Data]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Android_GooglePlay_Republish', '<Process Name="SIL_Default_AppBuilders_Android_GooglePlay_Republish" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" InitialValue="{ &quot;Synchronize Data&quot; : false }" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="280" Y="450" />
    </Activity>
    <Activity Name="Product Republish" State="Product Republish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"play-listing", "environment" : { "BUILD_MANAGE_VERSION_CODE": "1", "BUILD_MANAGE_VERSION_NAME" : "1" }}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="390" Y="260" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="720" Y="260" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="750" Y="420" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets" : "google-play", "environment" : { "PUBLISH_NO_APK" : "1" } }]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="570" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="720" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1020" Y="720" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="1060" Y="420" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="40" Y="250" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Republish" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Republish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="690" Y="389" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="925" Y="687" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="536" Y="616" />
    </Transition>
    <Transition Name="Initial_Product Build_1" To="Product Republish" From="Initial" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Email Reviewers_1" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Email Reviewers_Verify and Publish_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1006" Y="378" />
    </Transition>
    <Transition Name="Check Product Publish_Published_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Initial_Synchronize Data_1" To="Synchronize Data" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="Should_Execute_Activity" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[Synchronize Data]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";
	
INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Android_S3', '<Process Name="SIL_Default_AppBuilders_Android_S3" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="180" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="420" />
    </Activity>
    <Activity Name="Approval" State="Approval" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="640" Y="180" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="580" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="420" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk","environment":{"BUILD_MANAGE_VERSION_CODE":"1","BUILD_MANAGE_VERSION_NAME":"1"}}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="640" Y="580" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="600" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="350" Y="790" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"s3-bucket"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="650" Y="920" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="880" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1270" Y="1050" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="300" Y="1070" />
    </Activity>
    <Activity Name="Readiness Check" State="Readiness Check" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="180" />
    </Activity>
    <Activity Name="Approval Pending" State="Approval Pending" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="640" Y="360" />
    </Activity>
    <Activity Name="Terminated" State="Terminated" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Designer X="1220" Y="290" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Approval_Job Creation_1" To="Product Creation" From="Approval" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="778" Y="503" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="523" Y="894" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1237" Y="852" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="600" Y="725" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Readiness Check_Approval_1" To="Approval" From="Readiness Check" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Approval_Activity_1_1" To="Approval Pending" From="Approval" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Hold" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="756" Y="295" />
    </Transition>
    <Transition Name="Approval Pending_Product Creation_1" To="Product Creation" From="Approval Pending" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="908" Y="284" />
    </Transition>
    <Transition Name="Approval_Activity_1_2" To="Terminated" From="Approval" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="849" Y="309" />
    </Transition>
    <Transition Name="Approval Pending_Terminated_1" To="Terminated" From="Approval Pending" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="959" Y="395" />
    </Transition>
    <Transition Name="Approval Pending_Approval Pending_1" To="Approval Pending" From="Approval Pending" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="OrgAdmin" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Hold" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="865" Y="336" />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_NoAdmin_AppBuilders_Android_S3',	'<Process Name="SIL_NoAdmin_AppBuilders_Android_S3" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="180" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="420" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="580" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="420" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk","environment":{"BUILD_MANAGE_VERSION_CODE":"1","BUILD_MANAGE_VERSION_NAME":"1"}}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="640" Y="580" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="600" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="350" Y="790" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"s3-bucket"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="650" Y="920" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="880" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1270" Y="1050" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="300" Y="1070" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="180" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="778" Y="503" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="523" Y="894" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1237" Y="852" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="600" Y="725" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Readiness Check_Product Creation_1" To="Product Creation" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Android_S3_Rebuild', '<Process Name="SIL_Default_AppBuilders_Android_S3_Rebuild" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" InitialValue="{ &quot;Synchronize Data&quot; : false }" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="280" Y="450" />
    </Activity>
    <Activity Name="Product Rebuild" State="Product Rebuild" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"apk","environment":{"BUILD_MANAGE_VERSION_CODE":"1","BUILD_MANAGE_VERSION_NAME":"1","BUILD_SHARE_APP_LINK":"1"}}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="390" Y="260" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="720" Y="260" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="750" Y="420" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"s3-bucket"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="570" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="720" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1020" Y="720" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="1060" Y="420" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="40" Y="250" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Rebuild" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Rebuild" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="690" Y="389" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="925" Y="687" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="536" Y="616" />
    </Transition>
    <Transition Name="Initial_Product Build_1" To="Product Rebuild" From="Initial" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Email Reviewers_1" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Email Reviewers_Verify and Publish_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1006" Y="378" />
    </Transition>
    <Transition Name="Check Product Publish_Published_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Initial_Synchronize Data_1" To="Synchronize Data" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="Should_Execute_Activity" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[Synchronize Data]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Pwa_Cloud', '<Process Name="SIL_Default_AppBuilders_Pwa_Cloud" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="180" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="420" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="580" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="420" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"pwa"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="640" Y="580" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="600" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="350" Y="790" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"rclone"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="650" Y="920" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="880" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1270" Y="1050" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="300" Y="1070" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="180" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="778" Y="503" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="523" Y="894" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1237" Y="852" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="600" Y="725" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Readiness Check_Product Creation_1" To="Product Creation" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Pwa_Cloud_Rebuild', '<Process Name="SIL_Default_AppBuilders_Pwa_Cloud_Rebuild" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" InitialValue="{ &quot;Synchronize Data&quot; : false }" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="280" Y="450" />
    </Activity>
    <Activity Name="Product Rebuild" State="Product Rebuild" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"pwa"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="390" Y="260" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="720" Y="260" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="750" Y="420" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"rclone"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="570" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="720" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1020" Y="720" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="1060" Y="420" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="40" Y="250" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Rebuild" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Rebuild" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="690" Y="389" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="925" Y="687" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="536" Y="616" />
    </Transition>
    <Transition Name="Initial_Product Build_1" To="Product Rebuild" From="Initial" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Email Reviewers_1" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Email Reviewers_Verify and Publish_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1006" Y="378" />
    </Transition>
    <Transition Name="Check Product Publish_Published_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Initial_Synchronize Data_1" To="Synchronize Data" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="Should_Execute_Activity" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[Synchronize Data]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_Default_AppBuilders_Html_Cloud', '<Process Name="SIL_Default_AppBuilders_Html_Cloud" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
    <Command Name="Hold" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Product Creation" State="Product Creation" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_CreateProduct" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="180" />
    </Activity>
    <Activity Name="Check Product Creation" State="Check Product Creation" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="420" />
    </Activity>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="580" />
    </Activity>
    <Activity Name="App Builder Configuration" State="App Builder Configuration" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="420" />
    </Activity>
    <Activity Name="Product Build" State="Product Build" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"html"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="640" Y="580" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="600" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="350" Y="790" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"rclone"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="650" Y="920" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="980" Y="880" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1270" Y="1050" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="300" Y="1070" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="320" Y="180" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="Job Creation_Activity_1_1" To="Check Product Creation" From="Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Activity_1_1" To="App Builder Configuration" From="Check Product Creation" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_ProductCreated" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Job Creation_Check Job Creation_1" To="Check Product Creation" From="Check Product Creation" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="RepoConfig_SynchronizeData_1" To="Product Build" From="App Builder Configuration" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Build" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="778" Y="503" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="523" Y="894" />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Activity_1_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="1237" Y="852" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="600" Y="725" />
    </Transition>
    <Transition Name="App Store Preview_Activity_1_2" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Notify Reviewers_App Store Preview_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Readiness Check_Product Creation_1" To="Product Creation" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";

INSERT INTO "WorkflowScheme" ("Code", "Scheme") VALUES
('SIL_AppBuilders_Html_Cloud_Rebuild', '<Process Name="SIL_AppBuilders_Html_Cloud_Rebuild" CanBeInlined="false">
  <Designer />
  <Actors>
    <Actor Name="Owner" Rule="IsOwner" Value="" />
    <Actor Name="OrgAdmin" Rule="IsOrgAdmin" Value="" />
    <Actor Name="Admins" Rule="CheckRole" Value="Admins" />
  </Actors>
  <Parameters>
    <Parameter Name="Comment" Type="String" Purpose="Temporary" />
    <Parameter Name="ShouldExecute" Type="String" Purpose="Persistence" InitialValue="{ &quot;Synchronize Data&quot; : false }" />
    <Parameter Name="environment" Type="String" Purpose="Persistence" />
  </Parameters>
  <Commands>
    <Command Name="Approve" />
    <Command Name="Reject" />
    <Command Name="Continue" />
    <Command Name="Back" />
    <Command Name="Rebuild" />
    <Command Name="Email Reviewers" />
  </Commands>
  <Timers>
    <Timer Name="CheckReady" Type="Interval" Value="30s" NotOverrideIfExists="false" />
  </Timers>
  <Activities>
    <Activity Name="Synchronize Data" State="Synchronize Data" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="280" Y="450" />
    </Activity>
    <Activity Name="Product Rebuild" State="Product Rebuild" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_BuildProduct">
          <ActionParameter><![CDATA[{"targets":"html"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="390" Y="260" />
    </Activity>
    <Activity Name="Check Product Build" State="Check Product Build" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="720" Y="260" />
    </Activity>
    <Activity Name="Verify and Publish" State="Verify and Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="750" Y="420" />
    </Activity>
    <Activity Name="Product Publish" State="Product Publish" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
        <ActionRef Order="2" NameRef="BuildEngine_PublishProduct">
          <ActionParameter><![CDATA[{"targets":"rclone"}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="570" />
    </Activity>
    <Activity Name="Check Product Publish" State="Check Product Publish" IsInitial="False" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="700" Y="720" />
    </Activity>
    <Activity Name="Published" State="Published" IsInitial="False" IsFinal="True" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="1020" Y="720" />
    </Activity>
    <Activity Name="Email Reviewers" State="Email Reviewers" IsInitial="False" IsFinal="False" IsForSetState="False" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="SendReviewerLinkToProductFiles">
          <ActionParameter><![CDATA[{"types":["apk","play-listing"]}]]></ActionParameter>
        </ActionRef>
      </Implementation>
      <Designer X="1060" Y="420" />
    </Activity>
    <Activity Name="Initial" State="Initial" IsInitial="True" IsFinal="False" IsForSetState="True" IsAutoSchemeUpdate="True">
      <Implementation>
        <ActionRef Order="1" NameRef="UpdateProductTransition" />
      </Implementation>
      <PreExecutionImplementation>
        <ActionRef Order="1" NameRef="WriteProductTransition" />
      </PreExecutionImplementation>
      <Designer X="40" Y="250" />
    </Activity>
  </Activities>
  <Transitions>
    <Transition Name="SynchronizeData_Activity_1_1" To="Product Rebuild" From="Synchronize Data" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Continue" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Build_Activity_1_1" To="Check Product Build" From="Product Rebuild" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_SynchronizeData_1" To="Synchronize Data" From="Check Product Build" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="690" Y="389" />
    </Transition>
    <Transition Name="Check Product Build_Check Product Build_1" To="Check Product Build" From="Check Product Build" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Activity_1_1" To="Product Publish" From="Verify and Publish" Classifier="Direct" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Approve" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_SynchronizeData_1" To="Synchronize Data" From="Verify and Publish" Classifier="Reverse" AllowConcatenationType="Or" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Reject" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Product Publish_Activity_1_1" To="Check Product Publish" From="Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Publish_Check Product Publish_1" To="Check Product Publish" From="Check Product Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Timer" NameRef="CheckReady" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer X="925" Y="687" />
    </Transition>
    <Transition Name="Check Product Publish_SynchronizeData_1" To="Synchronize Data" From="Check Product Publish" Classifier="Reverse" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishFailed" ConditionInversion="false" />
      </Conditions>
      <Designer X="536" Y="616" />
    </Transition>
    <Transition Name="Initial_Product Build_1" To="Product Rebuild" From="Initial" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Otherwise" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Check Product Build_Verify and Publish_1" To="Verify and Publish" From="Check Product Build" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_BuildCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Verify and Publish_Email Reviewers_1" To="Email Reviewers" From="Verify and Publish" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Restrictions>
        <Restriction Type="Allow" NameRef="Owner" />
      </Restrictions>
      <Triggers>
        <Trigger Type="Command" NameRef="Email Reviewers" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Email Reviewers_Verify and Publish_1" To="Verify and Publish" From="Email Reviewers" Classifier="NotSpecified" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Always" />
      </Conditions>
      <Designer X="1006" Y="378" />
    </Transition>
    <Transition Name="Check Product Publish_Published_1" To="Published" From="Check Product Publish" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="BuildEngine_PublishCompleted" ConditionInversion="false" ResultOnPreExecution="true" />
      </Conditions>
      <Designer />
    </Transition>
    <Transition Name="Initial_Synchronize Data_1" To="Synchronize Data" From="Initial" Classifier="Direct" AllowConcatenationType="And" RestrictConcatenationType="And" ConditionsConcatenationType="And" IsFork="false" MergeViaSetState="false" DisableParentStateControl="false">
      <Triggers>
        <Trigger Type="Auto" />
      </Triggers>
      <Conditions>
        <Condition Type="Action" NameRef="Should_Execute_Activity" ConditionInversion="false" ResultOnPreExecution="false">
          <ActionParameter><![CDATA[Synchronize Data]]></ActionParameter>
        </Condition>
      </Conditions>
      <Designer />
    </Transition>
  </Transitions>
</Process>')
ON CONFLICT("Code") DO UPDATE SET
	"Scheme" = excluded."Scheme";
