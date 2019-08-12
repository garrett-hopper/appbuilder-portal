﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Migrations;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using Npgsql.EntityFrameworkCore.PostgreSQL.Metadata;
using OptimaJet.DWKit.StarterApplication.Data;
using OptimaJet.DWKit.StarterApplication.Models;

namespace OptimaJet.DWKit.StarterApplication.Migrations
{
    [DbContext(typeof(AppDbContext))]
    [Migration("20190809152626_AddVersionBuiltToProduct")]
    partial class AddVersionBuiltToProduct
    {
        protected override void BuildTargetModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("Npgsql:PostgresExtension:uuid-ossp", "'uuid-ossp', '', ''")
                .HasAnnotation("Npgsql:ValueGenerationStrategy", NpgsqlValueGenerationStrategy.SerialColumn)
                .HasAnnotation("ProductVersion", "2.1.0-rtm-30799")
                .HasAnnotation("Relational:MaxIdentifierLength", 63);

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ApplicationType", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("ApplicationTypes");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Email", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Bcc");

                    b.Property<string>("Cc");

                    b.Property<string>("ContentModelJson");

                    b.Property<string>("ContentTemplate");

                    b.Property<DateTime>("Created")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Subject");

                    b.Property<string>("To");

                    b.HasKey("Id");

                    b.ToTable("Emails");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Group", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Abbreviation");

                    b.Property<string>("Name");

                    b.Property<int>("OwnerId");

                    b.HasKey("Id");

                    b.HasIndex("OwnerId");

                    b.ToTable("Groups");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.GroupMembership", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("GroupId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("GroupId");

                    b.HasIndex("UserId");

                    b.ToTable("GroupMemberships");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Notification", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateEmailSent");

                    b.Property<DateTime?>("DateRead");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<string>("LinkUrl");

                    b.Property<string>("Message");

                    b.Property<string>("MessageId");

                    b.Property<string>("MessageSubstitutionsJson");

                    b.Property<bool>("SendEmail");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("UserId");

                    b.ToTable("Notifications");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Organization", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("BuildEngineApiAccessToken");

                    b.Property<string>("BuildEngineUrl");

                    b.Property<string>("LogoUrl");

                    b.Property<string>("Name");

                    b.Property<int>("OwnerId");

                    b.Property<bool?>("PublicByDefault")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.Property<bool?>("UseDefaultBuildEngine")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.Property<string>("WebsiteUrl");

                    b.HasKey("Id");

                    b.HasIndex("OwnerId");

                    b.ToTable("Organizations");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationInvite", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Name");

                    b.Property<string>("OwnerEmail");

                    b.Property<string>("Token");

                    b.HasKey("Id");

                    b.ToTable("OrganizationInvites");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationInviteRequest", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<string>("Name");

                    b.Property<string>("OrgAdminEmail");

                    b.Property<string>("WebsiteUrl");

                    b.HasKey("Id");

                    b.ToTable("OrganizationInviteRequests");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationMembership", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("OrganizationId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("OrganizationId");

                    b.HasIndex("UserId");

                    b.ToTable("OrganizationMemberships");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationMembershipInvite", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<string>("Email")
                        .IsRequired();

                    b.Property<DateTime>("Expires")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValueSql("current_date + 7");

                    b.Property<int>("InvitedById");

                    b.Property<int>("OrganizationId");

                    b.Property<bool>("Redeemed")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(false);

                    b.Property<Guid?>("Token")
                        .IsRequired()
                        .ValueGeneratedOnAdd()
                        .HasDefaultValueSql("uuid_generate_v4()");

                    b.HasKey("Id");

                    b.HasIndex("InvitedById");

                    b.HasIndex("OrganizationId");

                    b.ToTable("OrganizationMembershipInvites");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationProductDefinition", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("OrganizationId");

                    b.Property<int>("ProductDefinitionId");

                    b.HasKey("Id");

                    b.HasIndex("OrganizationId");

                    b.HasIndex("ProductDefinitionId");

                    b.ToTable("OrganizationProductDefinitions");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationStore", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("OrganizationId");

                    b.Property<int>("StoreId");

                    b.HasKey("Id");

                    b.HasIndex("OrganizationId");

                    b.HasIndex("StoreId");

                    b.ToTable("OrganizationStores");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Product", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValueSql("uuid_generate_v4()");

                    b.Property<DateTime?>("DateBuilt");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DatePublished");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<int>("ProductDefinitionId");

                    b.Property<int>("ProjectId");

                    b.Property<string>("PublishLink");

                    b.Property<int?>("StoreId");

                    b.Property<int?>("StoreLanguageId");

                    b.Property<string>("VersionBuilt");

                    b.Property<int>("WorkflowBuildId");

                    b.Property<string>("WorkflowComment");

                    b.Property<int>("WorkflowJobId");

                    b.Property<int>("WorkflowPublishId");

                    b.HasKey("Id");

                    b.HasIndex("ProductDefinitionId");

                    b.HasIndex("ProjectId");

                    b.HasIndex("StoreId");

                    b.HasIndex("StoreLanguageId");

                    b.ToTable("Products");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductArtifact", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ArtifactType");

                    b.Property<string>("ContentType");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<long?>("FileSize");

                    b.Property<int>("ProductBuildId");

                    b.Property<Guid>("ProductId");

                    b.Property<string>("Url");

                    b.HasKey("Id");

                    b.HasIndex("ProductBuildId");

                    b.HasIndex("ProductId");

                    b.ToTable("ProductArtifacts");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductBuild", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("BuildId");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<Guid>("ProductId");

                    b.Property<bool?>("Success");

                    b.Property<string>("Version");

                    b.HasKey("Id");

                    b.HasIndex("ProductId");

                    b.ToTable("ProductBuilds");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductDefinition", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.Property<int?>("RebuildWorkflowId");

                    b.Property<int?>("RepublishWorkflowId");

                    b.Property<int>("TypeId");

                    b.Property<int>("WorkflowId");

                    b.HasKey("Id");

                    b.HasIndex("RebuildWorkflowId");

                    b.HasIndex("RepublishWorkflowId");

                    b.HasIndex("TypeId");

                    b.HasIndex("WorkflowId");

                    b.ToTable("ProductDefinitions");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductPublication", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Channel");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<string>("LogUrl");

                    b.Property<int>("ProductBuildId");

                    b.Property<Guid>("ProductId");

                    b.Property<int>("ReleaseId");

                    b.Property<bool?>("Success");

                    b.HasKey("Id");

                    b.HasIndex("ProductBuildId");

                    b.HasIndex("ProductId");

                    b.ToTable("ProductPublications");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductTransition", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("AllowedUserNames");

                    b.Property<string>("Command");

                    b.Property<string>("Comment");

                    b.Property<DateTime?>("DateTransition");

                    b.Property<string>("DestinationState");

                    b.Property<string>("InitialState");

                    b.Property<Guid>("ProductId");

                    b.Property<int>("TransitionType")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(1);

                    b.Property<int?>("WorkflowType");

                    b.Property<Guid?>("WorkflowUserId");

                    b.HasKey("Id");

                    b.HasIndex("ProductId");

                    b.ToTable("ProductTransitions");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductWorkflow", b =>
                {
                    b.Property<Guid>("Id");

                    b.Property<string>("ActivityName");

                    b.Property<Guid>("SchemeId");

                    b.Property<string>("StateName");

                    b.HasKey("Id");

                    b.HasIndex("SchemeId");

                    b.ToTable("WorkflowProcessInstance");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductWorkflowScheme", b =>
                {
                    b.Property<Guid>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("SchemeCode");

                    b.HasKey("Id");

                    b.ToTable("WorkflowProcessScheme");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Project", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<bool?>("AllowDownloads")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.Property<bool?>("AutomaticBuilds")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.Property<DateTime?>("DateArchived");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<string>("Description");

                    b.Property<int>("GroupId");

                    b.Property<bool?>("IsPublic")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.Property<string>("Language");

                    b.Property<string>("Name");

                    b.Property<int>("OrganizationId");

                    b.Property<int>("OwnerId");

                    b.Property<int>("TypeId");

                    b.Property<string>("WorkflowAppProjectUrl");

                    b.Property<int>("WorkflowProjectId")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(0);

                    b.Property<string>("WorkflowProjectUrl");

                    b.HasKey("Id");

                    b.HasIndex("GroupId");

                    b.HasIndex("OrganizationId");

                    b.HasIndex("OwnerId");

                    b.HasIndex("TypeId");

                    b.ToTable("Projects");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Reviewer", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Email");

                    b.Property<string>("Locale");

                    b.Property<string>("Name");

                    b.Property<int>("ProjectId");

                    b.HasKey("Id");

                    b.HasIndex("ProjectId");

                    b.ToTable("Reviewers");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Role", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("RoleName");

                    b.HasKey("Id");

                    b.ToTable("Roles");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Store", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.Property<int>("StoreTypeId");

                    b.HasKey("Id");

                    b.HasIndex("StoreTypeId");

                    b.ToTable("Stores");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.StoreLanguage", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.Property<int>("StoreTypeId");

                    b.HasKey("Id");

                    b.HasIndex("StoreTypeId");

                    b.ToTable("StoreLanguages");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.StoreType", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<string>("Name");

                    b.HasKey("Id");

                    b.ToTable("StoreTypes");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.SystemStatus", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("BuildEngineApiAccessToken");

                    b.Property<string>("BuildEngineUrl");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<bool>("SystemAvailable");

                    b.HasKey("Id");

                    b.ToTable("SystemStatuses");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.User", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<string>("Email");

                    b.Property<bool?>("EmailNotification")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(true);

                    b.Property<string>("ExternalId");

                    b.Property<string>("FamilyName");

                    b.Property<string>("GivenName");

                    b.Property<bool>("IsLocked");

                    b.Property<string>("Locale");

                    b.Property<string>("Name");

                    b.Property<string>("Phone");

                    b.Property<int>("ProfileVisibility")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(1);

                    b.Property<string>("Timezone");

                    b.Property<Guid?>("WorkflowUserId");

                    b.HasKey("Id");

                    b.HasIndex("WorkflowUserId");

                    b.ToTable("Users");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.UserRole", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<int>("OrganizationId");

                    b.Property<int>("RoleId");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("OrganizationId");

                    b.HasIndex("RoleId");

                    b.HasIndex("UserId");

                    b.ToTable("UserRoles");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.UserTask", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("ActivityName");

                    b.Property<string>("Comment");

                    b.Property<DateTime?>("DateCreated");

                    b.Property<DateTime?>("DateUpdated");

                    b.Property<Guid>("ProductId");

                    b.Property<string>("Status");

                    b.Property<int>("UserId");

                    b.HasKey("Id");

                    b.HasIndex("ProductId");

                    b.HasIndex("UserId");

                    b.ToTable("UserTasks");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.WorkflowDefinition", b =>
                {
                    b.Property<int>("Id")
                        .ValueGeneratedOnAdd();

                    b.Property<string>("Description");

                    b.Property<bool>("Enabled");

                    b.Property<string>("Name");

                    b.Property<int?>("StoreTypeId");

                    b.Property<int>("Type")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValue(1);

                    b.Property<string>("WorkflowBusinessFlow");

                    b.Property<string>("WorkflowScheme");

                    b.HasKey("Id");

                    b.HasIndex("StoreTypeId");

                    b.ToTable("WorkflowDefinitions");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Group", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Owner")
                        .WithMany("Groups")
                        .HasForeignKey("OwnerId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.GroupMembership", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Group", "Group")
                        .WithMany()
                        .HasForeignKey("GroupId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "User")
                        .WithMany("GroupMemberships")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Notification", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "User")
                        .WithMany("Notifications")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Organization", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "Owner")
                        .WithMany()
                        .HasForeignKey("OwnerId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationMembership", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Organization")
                        .WithMany("OrganizationMemberships")
                        .HasForeignKey("OrganizationId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "User")
                        .WithMany("OrganizationMemberships")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationMembershipInvite", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "InvitedBy")
                        .WithMany()
                        .HasForeignKey("InvitedById")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Organization")
                        .WithMany()
                        .HasForeignKey("OrganizationId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationProductDefinition", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Organization")
                        .WithMany("OrganizationProductDefinitions")
                        .HasForeignKey("OrganizationId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ProductDefinition", "ProductDefinition")
                        .WithMany()
                        .HasForeignKey("ProductDefinitionId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.OrganizationStore", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Organization")
                        .WithMany("OrganizationStores")
                        .HasForeignKey("OrganizationId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Store", "Store")
                        .WithMany("OrganizationStores")
                        .HasForeignKey("StoreId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Product", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ProductDefinition", "ProductDefinition")
                        .WithMany()
                        .HasForeignKey("ProductDefinitionId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Project", "Project")
                        .WithMany("Products")
                        .HasForeignKey("ProjectId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Store", "Store")
                        .WithMany()
                        .HasForeignKey("StoreId");

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.StoreLanguage", "StoreLanguage")
                        .WithMany()
                        .HasForeignKey("StoreLanguageId");
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductArtifact", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ProductBuild", "ProductBuild")
                        .WithMany("ProductArtifacts")
                        .HasForeignKey("ProductBuildId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Product", "Product")
                        .WithMany()
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductBuild", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Product", "Product")
                        .WithMany("ProductBuilds")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductDefinition", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.WorkflowDefinition", "RebuildWorkflow")
                        .WithMany()
                        .HasForeignKey("RebuildWorkflowId");

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.WorkflowDefinition", "RepublishWorkflow")
                        .WithMany()
                        .HasForeignKey("RepublishWorkflowId");

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ApplicationType", "Type")
                        .WithMany()
                        .HasForeignKey("TypeId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.WorkflowDefinition", "Workflow")
                        .WithMany()
                        .HasForeignKey("WorkflowId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductPublication", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ProductBuild", "ProductBuild")
                        .WithMany("ProductPublications")
                        .HasForeignKey("ProductBuildId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Product", "Product")
                        .WithMany("ProductPublications")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductTransition", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Product", "Product")
                        .WithMany("Transitions")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.ProductWorkflow", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Product", "Product")
                        .WithOne("ProductWorkflow")
                        .HasForeignKey("OptimaJet.DWKit.StarterApplication.Models.ProductWorkflow", "Id")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ProductWorkflowScheme", "Scheme")
                        .WithMany()
                        .HasForeignKey("SchemeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Project", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Group", "Group")
                        .WithMany()
                        .HasForeignKey("GroupId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Organization")
                        .WithMany()
                        .HasForeignKey("OrganizationId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "Owner")
                        .WithMany()
                        .HasForeignKey("OwnerId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.ApplicationType", "Type")
                        .WithMany()
                        .HasForeignKey("TypeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Reviewer", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Project", "Project")
                        .WithMany("Reviewers")
                        .HasForeignKey("ProjectId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.Store", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.StoreType", "StoreType")
                        .WithMany()
                        .HasForeignKey("StoreTypeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.StoreLanguage", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.StoreType", "StoreType")
                        .WithMany("Languages")
                        .HasForeignKey("StoreTypeId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.UserRole", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Organization", "Organization")
                        .WithMany("UserRoles")
                        .HasForeignKey("OrganizationId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Role", "Role")
                        .WithMany("UserRoles")
                        .HasForeignKey("RoleId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "User")
                        .WithMany("UserRoles")
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.UserTask", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.Product", "Product")
                        .WithMany("UserTasks")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.User", "User")
                        .WithMany()
                        .HasForeignKey("UserId")
                        .OnDelete(DeleteBehavior.Cascade);
                });

            modelBuilder.Entity("OptimaJet.DWKit.StarterApplication.Models.WorkflowDefinition", b =>
                {
                    b.HasOne("OptimaJet.DWKit.StarterApplication.Models.StoreType", "StoreType")
                        .WithMany()
                        .HasForeignKey("StoreTypeId");
                });
#pragma warning restore 612, 618
        }
    }
}
